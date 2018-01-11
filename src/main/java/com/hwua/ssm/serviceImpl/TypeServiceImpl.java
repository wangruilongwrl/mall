package com.hwua.ssm.serviceImpl;

import com.hwua.ssm.dao.TypeDao;
import com.hwua.ssm.po.Type;
import com.hwua.ssm.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TypeServiceImpl implements TypeService {

    @Autowired
    private TypeDao typeDao;
    @Override
    public Type queryType() {
        return typeDao.queryType();
    }
}
