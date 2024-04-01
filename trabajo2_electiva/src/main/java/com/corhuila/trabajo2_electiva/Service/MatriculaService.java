package com.corhuila.trabajo2_electiva.Service;

import com.corhuila.trabajo2_electiva.Entity.Estudiante;
import com.corhuila.trabajo2_electiva.Entity.Matricula;
import com.corhuila.trabajo2_electiva.IRepository.IBaseRepository;
import com.corhuila.trabajo2_electiva.IRepository.IEstudianteRepository;
import com.corhuila.trabajo2_electiva.IRepository.IMatriculaRepository;
import com.corhuila.trabajo2_electiva.IService.IEstudianteService;
import com.corhuila.trabajo2_electiva.IService.IMatriculaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MatriculaService extends BaseService<Matricula> implements IMatriculaService {

    @Override
    protected IBaseRepository<Matricula, Long> getRepository() { return repository; }

    @Autowired
    private IMatriculaRepository repository;
}

