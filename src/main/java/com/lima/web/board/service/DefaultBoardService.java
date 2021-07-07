package com.lima.web.board.service;

import com.lima.service.BoardService;
import com.lima.web.board.dao.BoardDao;
import com.lima.web.board.domain.Board;
import com.lima.web.member.dao.MemberDao;
import com.lima.web.member.domain.Deposit;
import com.lima.web.member.domain.Member;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service
public class DefaultBoardService implements  BoardService {

    @Resource
    BoardDao boardDao;

    @Resource
    MemberDao memberDao;

    @Override
    public List<Board> list() throws Exception{
        return boardDao.findAll();
    }
    @Override
    public void insert(Board board) throws Exception{
        boardDao.insert(board);
    }
    @Override
    public Board get(int boardNo) throws Exception {
        return boardDao.findBy(boardNo);
    }

    @Override
    public List<Board> showMyBoardList(int memberNo) throws Exception {
        return boardDao.findAllByMemberNo(memberNo);
    }

    @Override
    public void deleteByBoardNo(int boardNo) throws Exception {
        boardDao.deleteByBoardNo(boardNo);
    }

    @Override
    public void update(Board board) throws Exception {
        boardDao.update(board);
    }

    @Override
    public void failMission(int boardNo) throws Exception {
        boardDao.failMission(boardNo);
    }

    @Override
    public void successMission(Board board, Member member) throws Exception {
        HashMap<String, Object> map = new HashMap<>();
        Deposit deposit = new Deposit();

        int getReward = Integer.parseInt(board.getGoalHam()) * 2;
        int totalHam = member.getHam() + getReward;

        member.setHam(totalHam);
        deposit.setHam(getReward);
        deposit.setMemberNo(member.getMemberNo());

        map.put("ham", member.getHam());
        map.put("boardNo", board.getBoardNo());
        map.put("memberNo", member.getMemberNo());

        memberDao.insertDeposit(deposit);
        boardDao.successMission(map);
    }

    @Override
    public int countBoard() throws Exception {
        return boardDao.countBoard();
    }

}
