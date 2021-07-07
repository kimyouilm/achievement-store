package com.lima.web.member.dao;

import com.lima.web.member.domain.Deposit;
import com.lima.web.member.domain.Member;
import com.lima.web.member.domain.Withdraw;

import java.util.List;
import java.util.Map;

public interface MemberDao {

  List<Member> findAll() throws Exception;

  void insert(Member member) throws Exception;

  Member findByUserIdPassword(Map<String, Object> map) throws Exception;

  int checkUserId(String userId) throws Exception;

  int checkEmail(String email) throws Exception;

  Member findBy(int memberNo) throws Exception;

  void hamUpdate(Member member) throws Exception;

  void updateMyInfo(Member member) throws Exception;

  void findAllHamHistory(int memberNo) throws Exception;

  void insertDeposit(Deposit deposit) throws Exception;

  void insertWithdraw(Withdraw withdraw) throws Exception;

  int countMember() throws Exception;
}
