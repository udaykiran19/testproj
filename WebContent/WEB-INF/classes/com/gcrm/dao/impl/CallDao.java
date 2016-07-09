/**
 * Copyright (C) 2012 - 2013, Grass CRM Studio
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.gcrm.dao.impl;

import java.util.Date;
import java.util.List;

import org.hibernate.Hibernate;

import com.gcrm.dao.ICallDao;
import com.gcrm.domain.Call1;

/**
 * Call DAO
 */
public class CallDao extends BaseDao<Call1> implements ICallDao {

    /*
     * (non-Javadoc)
     * 
     * @see com.gcrm.dao.ICallDao#findScheduleCalls(java.util.Date)
     */
    @Override
    public List<Call1> findScheduleCalls(Date startDate) throws Exception {
        List<Call1> calls = this.findByParam(
                "from Call1 where reminder_email = true and start_date > ? ",
                startDate);
        for (Call1 call : calls) {
            Hibernate.initialize(call.getContacts());
            Hibernate.initialize(call.getLeads());
            Hibernate.initialize(call.getUsers());
        }

        return calls;
    }

}
