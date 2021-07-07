package com.lima.web.board.controller.json;

import com.lima.common.JsonResult;
import com.lima.web.board.domain.BoardComments;
import com.lima.web.board.service.DefaultBoardCommentsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/json/boardComments")
public class JsonBoardCommentsController {

    @Resource
    DefaultBoardCommentsService defaultBoardCommentsService;

    @PostMapping("add")
    public JsonResult add(BoardComments boardComments) throws Exception {
        try {
            defaultBoardCommentsService.insert(boardComments);
            return new JsonResult().setState(JsonResult.SUCCESS);
        } catch (Exception e) {
            return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
        }
    }

}
