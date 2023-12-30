package com.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.model.SdfcBank;
import com.web.repo.SdfcBankRepo;

@Service
public class BankServiceImp implements BankService {

	@Autowired
	private SdfcBankRepo repo;
	@Override
	public String regAccount(String password, String c_password, SdfcBank bank) {
		// TODO Auto-generated method stub
		 @SuppressWarnings("unused")
		    String msg="";
		    String view="";
		    String pass=password;
		    String c_pass=c_password;
		    String acc_status=bank.getStatus();
		    Double amt=bank.getAmount();
		    if(amt>5000)
		    {
		      if (pass.equals(c_pass))
		      {
		        acc_status="Active";
		        bank.setStatus(acc_status);
		        msg = repo.save(bank).toString();
		        view = "regvcreate";
		      } 
		      else {
		        msg = "failed";
		        view = "regvpassword";
		      }
		    }
		    else
		    {
		      msg = "failed";
		      view = "regvbalance";
		    }
		    return view;
	}

	@Override
	public SdfcBank loginAccount(int accno, String name, String password) {
		// TODO Auto-generated method stub
		SdfcBank bank = repo.findById(accno).get();
		int no = accno;
		String uname = name;
		String pass = password;
		
		int no1 = bank.getAccno();
		String uname1 = bank.getName();
		String pass1 = bank.getPassword();
		String stat = bank.getStatus();
		
		if(no == no1 && uname.equalsIgnoreCase(uname1) && pass.equals(pass1) && stat.equalsIgnoreCase("Active"))
		{
			return repo.findById(no).get();
		}
		else
		{
			return null;
		}
		
	}

	@Override
	public SdfcBank getBalanceAccount(int accno) {
		// TODO Auto-generated method stub
		SdfcBank get = repo.findById(accno).get();
		return get;
	}

	@Override
	public SdfcBank getDepositAccount(int accno, String name, String password, double amount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SdfcBank depositInAccount(int accno, String name, String password, double amount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SdfcBank getwithdrawAccount(int accno, String name, String password, double amount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SdfcBank withdrawInAccount(int accno, String name, String password, double amount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SdfcBank getTransferAccount(int accno, String name, String password, double amount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SdfcBank transferAccount(int accno, String name, String password, double amount, int accno1,
			double t_ammount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SdfcBank getCloseForm(int accno, String name, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SdfcBank deactiveAccount(int accno, String name, String password) {
		// TODO Auto-generated method stub
		return null;
	}

}
