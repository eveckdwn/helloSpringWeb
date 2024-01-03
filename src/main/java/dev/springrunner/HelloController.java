package dev.springrunner;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.JstlView;

@Controller     //  웹 요청을 처리할 컨트롤러(Controller)임을 표시한다.
public class HelloController {
    @RequestMapping("/hello")       //  hello URL로 접근하는 HTTP 요청을 처리한다는 걸 표시한다.
    public ModelAndView hello(@RequestParam("name") String name) {  //  HTTP 요청 데이터에서 name 값 획득한다.
        //  RequestMapping이라는 애노테이션이 붙어서 'Web'의 요청을 처리해 주기 위한 메소드를 'Spring'에서는 '핸들러'라고 부른다.

        //  Model 생성
        HelloModel model = new HelloModel(name);

        //  View 생성
        View view = new JstlView("/WEB-INF/templates/HelloView.jsp");

        //  ModelAndView 생성 및 초기화
        ModelAndView mav = new ModelAndView();
        mav.addObject("hello", model);  //  View에 전달할 모델을 추가(key, value)한다.
        mav.setView(view);

        //  이 '핸들러'의 결과로 'Spring'은 반드시 'Model'과 'View'을 반환해 주기를 기대한다.
        return mav;
    }
}