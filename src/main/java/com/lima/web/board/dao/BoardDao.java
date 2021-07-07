package com.lima.web.board.dao;

import com.lima.web.board.domain.Board;

import java.util.HashMap;
import java.util.List;

public interface BoardDao {

  List<Board> findAll() throws Exception;

  int insert(Board board);

  Board findBy(int boardNo) throws Exception;

  List<Board> findAllByMemberNo(int memberNo) throws Exception;

  void deleteByBoardNo(int boardNo) throws Exception;

  void update(Board board) throws Exception;

  void failMission(int boardNo) throws Exception;

  void successMission(HashMap<String, Object> map) throws Exception;

  int countBoard() throws Exception;
}
