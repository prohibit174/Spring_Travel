package kosta.travel.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {

  private static final Logger logger = 
      LoggerFactory.getLogger(UploadFileUtils.class);

//  public static String uploadFile(String uploadPath, 
//      String originalName, 
//      byte[] fileData)throws Exception{
//    
//    return null;
//  }
//  

  
  public static String uploadFile(String uploadPath, String originalName, byte[] fileData)throws Exception{
    //�뙆�씪�쓣 �뾽濡쒕뱶 �븯湲� �쐞�빐�꽌 uploadPath, originalName, byte[] 媛� �븘�슂�븿.
	//蹂꾨룄�쓽 �뜲�씠�꽣媛� 蹂닿� �맆 �븘�슂媛� �뾾湲� �븣臾몄뿉 static
	   UUID uid = UUID.randomUUID();
	   String savedName = uid.toString() + "_" +  originalName;
	   String savedPath = calcPath(uploadPath);
	   //���옣 �맆 寃쎈줈瑜� 怨꾩궛
	   File target = new File(uploadPath + savedPath, savedName);
	   FileCopyUtils.copy(fileData, target);
	   //�썝蹂� �뙆�씪 ���옣
	   String formatName = originalName.substring(originalName.lastIndexOf(".") + 1);
	   String uploadFileName = null;
	   
	   if(MediaUtils.getMediaType(formatName) != null){
		   uploadFileName = makeThumbnail(uploadPath, savedPath, savedName);
	   }else{
		   uploadFileName = makeIcon(uploadPath, savedPath, savedName);
	   }
	  return uploadFileName;
    
  }
  
  	private static String makeIcon(String uploadPath, String path, String fileName) throws Exception{
  		String iconName = uploadPath + path + File.separator + fileName;
  		
  		return iconName.substring(uploadPath.length()).replace(File.separatorChar, '/');
  	}
  	
	private static String calcPath(String uploadPath){
		//理쒖쥌 寃곌낵 �뤃�뜑 諛섑솚
		Calendar cal = Calendar.getInstance();
		
		String yearPath = File.separator + cal.get(Calendar.YEAR);
		String monthPath = yearPath + File.separator +  new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		String datePath = monthPath +  File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		
		makeDir(uploadPath, yearPath, monthPath, datePath);
		// �뼸�뼱�궦 �궇吏쒕�� 湲곕낯 寃쎈줈�� �븿猿� makeDir 硫붿냼�뱶瑜� �넻�빐�꽌 �뤃�뜑媛� �깮�꽦.
		logger.info(datePath);
		
		return datePath;
	}
	
	private static void makeDir(String uploadPath, String... paths){
		//�뤃�뜑 �깮�꽦 �븯�뒗 硫붿냼�뱶
		if(new File(paths[paths.length - 1]).exists()){
			return;
		}
		
		for(String path : paths){
			
			
			
			File dirPath = new File(uploadPath + path);
			
			if(! dirPath.exists()){
				dirPath.mkdir();
			}
		}
	}
  
	private static String makeThumbnail(String uploadPath, String path, String fileName) throws Exception{
		//�뜽�꽕�씪 �깮�꽦 肄붾뱶
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath +  path, fileName));
		
		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);
		//�뜽�꽕�씪 �겕湲� 100px
		String thumnailName = uploadPath + path +  File.separator + "s_" + fileName;
		//�뜽�꽕�씪 �씠由꾩� s_ 濡� �떆�옉
		
		File newFile = new File(thumnailName);
		String formatName = fileName.substring(fileName.lastIndexOf(".") +1);
		ImageIO.write(destImg, formatName.toUpperCase(), newFile);
		
		return thumnailName.substring(uploadPath.length()).replace(File.separatorChar, '/');
		
	}
  
}
