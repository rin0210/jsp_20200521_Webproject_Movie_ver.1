package controller;

import action.Action;
import action.BookmarkAction;
import action.CategoryAction;
import action.CommentDelAction;
import action.CommentModAction;
import action.CommentModFormAction;
import action.CommentWriteAction;
import action.HomeAction;
import action.IdCheckAction;
import action.Identification;
import action.JoinAction;
import action.LoginAction;
import action.LogoutAction;
import action.MyContentsAction;
import action.PaymentAction;
import action.ProfileUpdateAction;
import action.ProfileUpdateFormAction;
import action.ReCommentAction;
import action.SearchAction;
import action.StarAction;
import action.ViewAction;

public class ActionFactory {
	private static ActionFactory single = null;

	private ActionFactory() {

	}

	public static ActionFactory getInstance() {
		if (single == null) {
			single = new ActionFactory();
		}
		return single;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory: " + command);
		if (command.equals("Movie_Home")) {
			action = new HomeAction();
		} else if (command.equals("Movie_Identification")) {
			action = new Identification();
		} else if (command.equals("Movie_IdCheck")) {
			action = new IdCheckAction();
		} else if (command.equals("Movie_Join")) {
			action = new JoinAction();
		} else if (command.equals("Movie_Login")) {
			action = new LoginAction();
		} else if (command.equals("Movie_Logout")) {
			action = new LogoutAction();
		} else if (command.equals("Movie_View")) {
			action = new ViewAction();
		} else if (command.equals("Movie_Bookmark")) {
			action = new BookmarkAction();
		} else if (command.equals("Movie_Star")) {
			action = new StarAction();
		} else if (command.equals("Movie_comment")) {
			action = new CommentWriteAction();
		} else if (command.equals("Movie_reComment")) {
			action = new ReCommentAction();
		} else if (command.equals("Movie_MyContents")) {
			action = new MyContentsAction();
		} else if (command.equals("Movie_Category")) {
			action = new CategoryAction();
		} else if (command.equals("Movie_ProfileUpdate_Form")) {
			action = new ProfileUpdateFormAction();
		} else if (command.equals("Movie_ProfileUpdate")) {
			action = new ProfileUpdateAction();
		} else if (command.equals("Movie_Payment")) {
			action = new PaymentAction();
		} else if (command.equals("Movie_CommentMod")) {
			action = new CommentModAction();
		} else if (command.equals("Movie_CommentMod_Form")) {
			action = new CommentModFormAction();
		} else if (command.equals("Movie_CommentDel")) {
			action = new CommentDelAction();
		} else if (command.equals("Movie_Search")) {
			action = new SearchAction();
		}
		
		return action;
	}
}
