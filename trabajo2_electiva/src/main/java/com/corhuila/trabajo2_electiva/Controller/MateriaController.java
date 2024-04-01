package com.corhuila.trabajo2_electiva.Controller;

import com.corhuila.trabajo2_electiva.Entity.Estudiante;
import com.corhuila.trabajo2_electiva.Entity.Materia;
import com.corhuila.trabajo2_electiva.IService.IEstudianteService;
import com.corhuila.trabajo2_electiva.IService.IMateriaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("api/materia")
public class MateriaController extends ABaseController<Materia, IMateriaService>{

    public MateriaController(IMateriaService service){super(service, "materia");}

}
