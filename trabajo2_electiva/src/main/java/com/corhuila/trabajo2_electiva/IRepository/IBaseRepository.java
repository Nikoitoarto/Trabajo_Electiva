package com.corhuila.trabajo2_electiva.IRepository;

import com.corhuila.trabajo2_electiva.Entity.ABaseEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IBaseRepository < T extends ABaseEntity, ID> extends JpaRepository<T, ID> {
}
