package com.thinkgem.jeesite.common.security.shiro;

import org.apache.commons.lang3.SerializationUtils;  
import java.io.Serializable;  
import org.springframework.data.redis.serializer.RedisSerializer;  
import org.springframework.data.redis.serializer.SerializationException;

public class CollectionSerializer<T extends Serializable> implements RedisSerializer<T>{  
    private CollectionSerializer(){}  
    public static volatile CollectionSerializer<Serializable> collectionSerializer=null;  
    public static CollectionSerializer<Serializable> getInstance(){  
        if(collectionSerializer==null){  
            synchronized (CollectionSerializer.class) {  
                if(collectionSerializer==null){  
                    collectionSerializer=new CollectionSerializer<>();  
                }  
            }  
        }  
        return collectionSerializer;  
    }  
    @Override  
    public byte[] serialize(T t) throws SerializationException {  
        return SerializationUtils.serialize(t);  
    }  
  
    @Override  
    public T deserialize(byte[] bytes) throws SerializationException {  
        return SerializationUtils.deserialize(bytes);  
    }  
  
  
}
