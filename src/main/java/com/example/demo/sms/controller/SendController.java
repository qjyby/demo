package com.example.demo.sms.controller;

import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.example.demo.sms.SmsUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.HashMap;
import java.util.Map;



@Controller
@RequestMapping("/sms")
public class SendController {
    private static int newcode;
    private static HashMap<String, String> hashMap = new HashMap<>();

    public static int getNewcode() {
        return newcode;
    }

    public static void setNewcode() {
        newcode = (int) (Math.random() * 9999) + 100;  //每次调用生成一次四位数的随机数
    }


    @PostMapping("/send")
    public void send(@RequestParam("phone") String phone) {
        setNewcode();
        String code = Integer.toString(getNewcode());
        hashMap.put(phone, code);
        try {
            SendSmsResponse sendSms = SmsUtils.sendSms(phone, code);
            System.out.println("短信接口返回的数据----------------");
            System.out.println("Code=" + sendSms.getCode());
            System.out.println("Message=" + sendSms.getMessage());
            System.out.println("RequestId=" + sendSms.getRequestId());
            System.out.println("BizId=" + sendSms.getBizId());
        } catch (ClientException e) {
            e.printStackTrace();
        }
    }

    @GetMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("/login");
    }

    @PostMapping("/check")
    public ModelAndView check(@RequestParam("tell")String phone, @RequestParam("certifycode")String code, Map<String, Object> map) {
        String checkCode = hashMap.get(phone);
        if (code.equals(checkCode)){
            map.put("url", "/sms/login");
            return new ModelAndView("success",map);
        }
        else {
            map.put("url", "/sms/login");
            return new ModelAndView("error",map);
        }

    }
}
