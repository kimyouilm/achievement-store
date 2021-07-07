package com.lima.service;

import com.lima.web.board.domain.Board;
import com.lima.web.member.domain.Member;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BoardService {

    List<Board> list() throws Exception;

    void insert(Board board) throws Exception;

    Board get(int boardNo) throws Exception;

    List<Board> showMyBoardList(int memberNo) throws Exception;

    void deleteByBoardNo(int boardNo) throws Exception;

    void update(Board board) throws Exception;

    void failMission(int boardNo) throws Exception;

    void successMission(Board board, Member member) throws Exception;

    int countBoard() throws Exception;
}
