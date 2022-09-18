package FileUpload;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import spring.Property;

@Component("fs")
public class FileServiceImpl implements FileService{

   @Override
   public Property fileProcess(MultipartHttpServletRequest mul) {
      Property dto = new Property();
      dto.setProperty_types(mul.getParameter("property_types"));
      dto.setLocation(mul.getParameter("location"));
      dto.setAddress(mul.getParameter("address"));
      dto.setTrading_types(mul.getParameter("trading_types"));
      dto.setSize(mul.getParameter("size"));
      dto.setPrice(mul.getParameter("price"));
      dto.setMessage(mul.getParameter("message"));
      
      MultipartFile file = mul.getFile("photo");
      
      if(file.getSize()!=0) {
         SimpleDateFormat format = new SimpleDateFormat("MMddHHmmss-");
         Calendar calendar = Calendar.getInstance();
         String sysFileName = format.format(calendar.getTime());
         
         sysFileName += file.getOriginalFilename();
         dto.setPhoto(sysFileName);
         
         File saveFile = new File(image_repo+"/"+sysFileName);
         
         try {
            file.transferTo(saveFile);
         }catch(Exception e) {
            e.printStackTrace();
         }
      }else {
         dto.setPhoto(null);
      }
      return dto;
   }
}