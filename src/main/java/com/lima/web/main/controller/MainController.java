package com.lima.web.main.controller;

import com.lima.service.BoardService;
import com.lima.web.board.domain.Board;
import com.lima.web.member.domain.Member;
import com.lima.web.member.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/")
@SessionAttributes("loginUser")
public class MainController {

    @Resource
    BoardService boardService;

    @Resource
    MemberService memberService;

    // SessionAttributes 로 로그인 유저를 저장하고 jsp 에서 no?= 파라미터 값 노출을 막음.
    @GetMapping("index")
    public void index(Model model, HttpSession session) throws  Exception {
        Member loginUser = ((Member) session.getAttribute("loginUser"));
        if (loginUser != null) {
            Member member = memberService.get(loginUser.getMemberNo());
            model.addAttribute("loginUser", member);
        }
        // 회원 숫자
        int memberCount = memberService.countMember();
        // 게시판 갯수
        int boardCount = boardService.countBoard();

        // 모든 보드 들고 오기
        List<Board> boards = boardService.list();
        model.addAttribute("boards", boards);
        model.addAttribute("memberCount", memberCount);
        model.addAttribute("boardCount", boardCount);
    }
}
