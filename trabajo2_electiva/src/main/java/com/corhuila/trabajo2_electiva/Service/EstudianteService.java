package com.corhuila.trabajo2_electiva.Service;

import com.corhuila.trabajo2_electiva.Entity.Estudiante;
import com.corhuila.trabajo2_electiva.IRepository.IBaseRepository;
import com.corhuila.trabajo2_electiva.IRepository.IEstudianteRepository;
import com.corhuila.trabajo2_electiva.IService.IEstudianteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EstudianteService extends BaseService<Estudiante> implements IEstudianteService {

    @Override
    protected IBaseRepository<Estudiante, Long> getRepository() { return repository; }

    @Autowired
    private IEstudianteRepository repository;
}
