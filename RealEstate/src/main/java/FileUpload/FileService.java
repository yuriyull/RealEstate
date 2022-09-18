package FileUpload;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import spring.Property;

@Component
public interface FileService {
	public static final String image_repo ="D:\\LEE_YURI\\RealEState_SPRING\\RealEstate\\src\\main\\webapp\\resources\\images";
	Property fileProcess(MultipartHttpServletRequest mul);
}
