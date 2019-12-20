/**
 *
 */
package com.bbs.service;

import com.bbs.bean.Comments;
import com.bbs.bean.Topics;
import com.bbs.bean.Users;

public interface CommentService {

    public boolean newComment(Comments comment, Users user, Topics topic);


    /**
     * @param comment
     * @param topic
     */
    public void deleteComment(Comments comment, Topics topic);
}
