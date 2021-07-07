package com.lima.web.member.service;

import com.lima.web.member.dao.MemberDao;
import com.lima.web.member.domain.Deposit;
import com.lima.web.member.domain.Member;
import com.lima.web.member.domain.Withdraw;
import lombok.With;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service
public class MemberService {

    @Resource
    MemberDao memberDao;

    public List<Member> findAll() throws Exception {
        return memberDao.findAll();
    }

    public void insert(Member member) throws Exception {
        memberDao.insert(member);
    }

    public Member findByEmailPassword(String id, String password) throws Exception {
        HashMap<String, Object> map = new HashMap<>();
        map.put("id", id);
        map.put("password", password);

        Member member = memberDao.findByUserIdPassword(map);

        return member;
    }

    public int userIdCheck(String userId) throws Exception {
        return memberDao.checkUserId(userId);
    }

    public int emailCheck(String email) throws Exception {
        return memberDao.checkEmail(email);
    }

    public Member get(String userId, String password) throws Exception {
        HashMap<String, Object> map = new HashMap<>();
        map.put("userId", userId);
        map.put("password", password);
        Member member = memberDao.findByUserIdPassword(map);
        if (member == null) {
            throw new Exception("맴버 없음.");
        }
        return member;
    }

    public Member get(int memberNo) throws Exception {
        return memberDao.findBy(memberNo);
    }

    /**
     *
     * @param ham
     * @param memberNo
     * @throws Exception
     */
    public void hamUpdate(int ham, int memberNo) throws Exception {
        Member member = memberDao.findBy(memberNo);
        int newHam = member.getHam() - ham;
        member.setHam(newHam);
        memberDao.hamUpdate(member);
    }

    public void updateMyInfo(Member member) throws Exception {
        memberDao.updateMyInfo(member);
    }
    public void findAllHamHistory(int memberNo) throws Exception{
        memberDao.findAllHamHistory(memberNo);
    }
    public void insertDeposit(Deposit deposit) throws Exception{
        memberDao.insertDeposit(deposit);
    }
    public void insertWithdraw(Withdraw withdraw) throws Exception{
        memberDao.insertWithdraw(withdraw);
    }

    public int countMember() throws Exception {
        return memberDao.countMember();
    }
}
