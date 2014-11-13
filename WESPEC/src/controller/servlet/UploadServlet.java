package controller.servlet;



import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.dao.ProfileDao;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/*
 * location : 업로드된 파일이 기본적으로 저장될 위치
 * maxFileSize : 업로드된 파일 한 개의 크기 제한 
 * fileSizeThreshold : 업로드된 파일이 임시로 서버에 파일로 저장되지 않고 메모리에서 바로 스트림으로 전달되는 크기의 한계, 
 * 						예를 들어 위와 같이 1024 * 1024, 즉 1메가바이트로 했을 경우 파일이 그 이상인 경우만 임시 파일로 저장되므로 1메가바이트 이하의 파일은 빠르게 전해지는 대신 문제가 생겼을 때 복원하기 어려울 수 있다. 
 * maxRequestSize : 파일 한 개의 용량 제한이 아닌 전체 multipart/form-data 인코딩 요청의 크기 제한이다. 이는 하나의 요청에 파일 여러 개가 업로드될 경우 총합에 대한 제한이라고 볼 수 있다. 
*/

@MultipartConfig(	
		location ="/user/upload",
		maxFileSize = 1024 * 1024 * 3, 
		fileSizeThreshold = 1024 * 1024 * 2, 
		maxRequestSize = 1024 * 1024 * 20
		) 


@WebServlet("/FileUploadServlet")
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        // 로그인 체크
 		if(!ExceptionService.isLogin(request))			
 			ExceptionService.printAlert(request, response, "로그인하지 않으셨습니다.","/login");
 		
		HttpSession session = request.getSession(false);
		String memberId = (String)session.getAttribute("memberId");
		
        PrintWriter out = response.getWriter();
 
        try {
            
            //디스크상의 프로젝트 실제 경로얻기
            String contextRootPath = this.getServletContext().getRealPath("/"); 
            
            //1. 메모리나 파일로 업로드 파일 보관하는 FileItem의 Factory 설정
            DiskFileItemFactory diskFactory = new DiskFileItemFactory(); //디스크 파일 아이템 공장
            diskFactory.setSizeThreshold(4096); //업로드시 사용할 임시 메모리
            diskFactory.setRepository(new File(contextRootPath + "/user/upload/temp")); //임시저장폴더
            
            //2. 업로드 요청을 처리하는 ServletFileUpload생성
            ServletFileUpload upload = new ServletFileUpload(diskFactory);
            upload.setSizeMax(3 * 1024 * 1024); //3MB : 전체 최대 업로드 파일 크기

            
            //3. 업로드 요청파싱해서 FileItem 목록구함​​
            List<FileItem> items = upload.parseRequest(request); 
            Iterator<FileItem> iter = items.iterator(); //반복자(Iterator)로 받기​            
            while(iter.hasNext()) { //반목문으로 처리​    
                FileItem item = (FileItem) iter.next(); //아이템 얻기
                 //4. FileItem이 폼 입력 항목인지 여부에 따라 알맞은 처리
                if(item.isFormField()){ //파일이 아닌경우
                    processFormField(out, item);
                } else { //파일인 경우
                    processUploadFile(out, item, contextRootPath,memberId);
                }
            }  
        } catch(Exception e) {
            out.println("<PRE>");
            e.printStackTrace(out);
            out.println("</PRE>");
        }
        response.sendRedirect(request.getContextPath() +"/Register");
    }

    //업로드한 정보가 파일인경우 처리
    private void processUploadFile(PrintWriter out, FileItem item, String contextRootPath,String memberId) throws Exception 
    {
//        String name = item.getFieldName(); 			//파일의 필드 이름 얻기
        String fileName = item.getName(); 			//파일명 얻기
//        String contentType = item.getContentType();	//컨텐츠 타입 얻기
//        long fileSize = item.getSize(); 			//파일의 크기 얻기
        
        //업로드 파일명을 현재시간으로 변경후 저장
        String fileExt = fileName.substring(fileName.lastIndexOf("."));
        String uploadedFileName = System.currentTimeMillis() + fileExt; 
        System.out.println(fileExt);
        System.out.println(uploadedFileName);       
        
       
        	// 저장할 절대 경로로 파일 객체 생성
	        File orgFile = new File(contextRootPath + "/user/upload/" + uploadedFileName);
	        // 원본 이미지 저장
	        item.write(orgFile);       
        
	        // 프로필 db에 URL저장.
	        String photoURL = "/user/upload/"+  uploadedFileName;  
	        ProfileDao profileDao = new ProfileDao();
	        profileDao.updatePhoto(memberId, photoURL);
         
        
    }
    
    private void processFormField(PrintWriter out, FileItem item) throws Exception
    {
        String name = item.getFieldName();		 	//필드명 얻기
        String value = item.getString("euc-kr"); 	//euc-kr형식으로 필드에 대한 값읽기
        
        out.println(name + ":" + value + "<BR>"); 	//출력
    }
}