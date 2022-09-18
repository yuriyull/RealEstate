package spring;


public class MemberRegisterService {
	
	private MemberDao memberDao;

	public MemberRegisterService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public String regist(RegisterRequest req) {
		Member member = memberDao.selectById(req.getId());
		if (member != null) {
			throw new DuplicateMemberException("dup id " + req.getId());
		}
		Member newMember = new Member(
				req.getId(), req.getPassword(), req.getName());
		newMember.setBirth(req.getBirth());
		newMember.setGender(req.getGender());
		newMember.setEmail(req.getEmail());
		newMember.setPhone(req.getPhone());
		
		memberDao.insert(newMember);
		return newMember.getId();
	}
	
}
