package com.corhuila.trabajo2_electiva.Controller;

import com.corhuila.trabajo2_electiva.Entity.Estudiante;
import com.corhuila.trabajo2_electiva.IService.IEstudianteService;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("api/estudiante")
public class EstudianteController extends ABaseController<Estudiante,IEstudianteService>{

  public EstudianteController(IEstudianteService service){super(service, "estudiante");}

}