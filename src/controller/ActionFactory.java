package controller;

import action.Action;
import action.CategoryAction;
import action.BookmarkAction;
import action.CommentWriteAction;
import action.HomeAction;
import action.IdCheckAction;
import action.Identification;
import action.JoinAction;
import action.JoinFormAction;
import action.LikeAction;
import action.LoginAction;
import action.LogoutAction;
import action.MyContentsAction;
import action.ReCommentAction;
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
		} else if (command.equals("Movie_JoinForm")) {
			action = new JoinFormAction();
		} else if (command.indexOf("Movie_IdCheck") > -1) {
			action = new IdCheckAction(command);
		} else if (command.equals("Movie_Join")) {
			action = new JoinAction();
		} else if (command.equals("Movie_Login")) {
			action = new LoginAction();
		} else if (command.equals("Movie_Logout")) {
			action = new LogoutAction();
		}  else if (command.equals("Movie_View")) {
			action = new ViewAction();
		}  else if (command.equals("Movie_Bookmark")) {
			action = new BookmarkAction();
		} else if (command.equals("Movie_like")) {
			action = new LikeAction();
		} else if (command.equals("Movie_comment")) {
			action = new CommentWriteAction();
		} else if (command.equals("Movie_reComment")) {
			action = new ReCommentAction();
		} else if (command.equals("Movie_MyContents")) {
			action = new MyContentsAction();
		}  else if (command.equals("Movie_Category")) {
			action = new CategoryAction();
		} 
		return action;
	}
}
