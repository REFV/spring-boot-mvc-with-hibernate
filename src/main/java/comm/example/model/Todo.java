package comm.example.model;

import lombok.Data;
import lombok.extern.apachecommons.CommonsLog;

import javax.persistence.*;

@Data
@Entity
public class Todo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;    
@Column(name = "Description")
   
 private String description;
    @Column(name = "Date")
    private int date;
}
