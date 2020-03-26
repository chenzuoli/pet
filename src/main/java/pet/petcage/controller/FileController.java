package pet.petcage.controller;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

/**
 * Created by user chenzuoli on 2020/3/26 09:29
 * description: 文件上传下载控制器
 */
@RestController
public class FileController {
    @ResponseBody
    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    public String upload(HttpServletRequest request, @RequestParam(value = "file", required = false) MultipartFile file) throws IOException {
        System.out.println("执行upload");
        request.setCharacterEncoding("UTF-8");
        System.out.println("执行图片上传");
        String user = request.getParameter("user");
        System.out.println("user:" + user);
        if (!file.isEmpty()) {
            System.out.println("成功获取照片");
            String fileName = file.getOriginalFilename();
            String path = null;
            String type = null;
            type = fileName.contains(".") ? fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()) : null;
            System.out.println("图片初始名称为：" + fileName + " 类型为：" + type);
            if (type != null) {
                if ("GIF".equals(type.toUpperCase()) || "PNG".equals(type.toUpperCase()) || "JPG".equals(type.toUpperCase())) {
                    // 项目在容器中实际发布运行的根路径
                    String realPath = request.getSession().getServletContext().getRealPath("/");
                    // 自定义的文件名称
                    String trueFileName = String.valueOf(System.currentTimeMillis()) + fileName;
                    // 设置存放图片文件的路径
                    path = realPath + "/uploads/" + trueFileName;
                    System.out.println("存放图片文件的路径:" + path);
                    file.transferTo(new File(path));
                    System.out.println("文件成功上传到指定目录下");
                } else {
                    System.out.println("不是我们想要的文件类型,请按要求重新上传");
                    return "error";
                }
            } else {
                System.out.println("文件类型为空");
                return "error";
            }
        } else {
            System.out.println("没有找到相对应的文件");
            return "error";
        }
        return "success";
    }
}
