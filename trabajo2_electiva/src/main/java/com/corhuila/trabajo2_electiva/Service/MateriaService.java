package com.corhuila.trabajo2_electiva.Service;

import com.corhuila.trabajo2_electiva.Entity.Materia;
import com.corhuila.trabajo2_electiva.IRepository.IBaseRepository;
import com.corhuila.trabajo2_electiva.IRepository.IMateriaRepository;
import com.corhuila.trabajo2_electiva.IService.IMateriaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class MateriaService extends BaseService<Materia> implements IMateriaService {

    @Override
    protected IBaseRepository<Materia, Long> getRepository() { return repository; }

    @Autowired
    private IMateriaRepository repository;
}
