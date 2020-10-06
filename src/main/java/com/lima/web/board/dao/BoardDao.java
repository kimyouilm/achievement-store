package com.lima.web.board.dao;

import com.lima.web.board.domain.Board;

import java.util.List;

public interface BoardDao {

    List<Board> findAll() throws Exception;
    int insert(Board board) throws Exception;
    Board findBy(int boardNo) throws Exception;
    List<Board> findAllByMember(int memberNo) throws Exception;
    void deleteByBoardNo(int boardNo) throws Exception;
}
