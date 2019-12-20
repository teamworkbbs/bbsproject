/**
 *
 */
package com.bbs.dao;
import com.bbs.bean.Grades;

public interface GradeDao {

    /**
     * @param id
     * @return
     */
    public Grades find(int id);

}
