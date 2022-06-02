import React, { useState, useEffect, useMemo } from 'react';
import { Form, Container, FormControl, Table, Button } from 'react-bootstrap';
import Axios from 'axios'
import { Link } from 'react-router-dom'


function SUsers() {
    const [Users, setUsers] = useState([]);

    const [term, setTerm] = useState("");

    useEffect(() => {
        (async () => {
            const response = await Axios({
                method: 'get',
                url: 'http://localhost:80/Final/public/api/users'
            })
                .then(response => {
                    setUsers(response.data);

                })

        })();
    }, []);

    const searchB = useMemo(() =>
    (async () => {
        const response = await Axios({
            method: 'get',
            url: 'http://localhost:80/Final/public/api/userSearch?Name=' + $('#name').val()

        })
            .then(response => {
                console.log("Envio", response.data);
                setUsers(response.data);
            })
        console.log("Valores",Users)
    })
        , [Users])



    return (
        <div id="formContent">
            <div className="fadeIn first">
                <Container>
                    <div className="Con">
                        <section className="Mai">
                            <br></br>
                            <h3 align= "center">Ingresa el nombre del usuario a buscar: </h3>
                            &nbsp;
                            &nbsp;
                            <Form.Group>
                                <FormControl type="text" placeholder="Buscar por nombre"
                                    onChange={e => setTerm(e.target.value)}
                                    id="name" />
                            </Form.Group>

                            &nbsp;
                            &nbsp;

                        </section>
                        <br />

                        <Table  bordered="outline-dark" className="ContenidoTAbla">
                            <thead class="table-primary">
                                <tr>
                                    <th>  </th>
                                    <th>id</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                  
                                    
                                </tr>
                            </thead>
                            <tbody  className="datos">
                                {Users.filter((dataItem) => {
                                    if (term == "") {
                                        return dataItem
                                    } else if (dataItem.name.toLowerCase().includes(term.toLowerCase())) {
                                        return dataItem
                                    }

                                }).map(dataItem => (
                                    <tr >
                                        <th>Users:</th>
                                        <td key={dataItem.id}>{dataItem.id}</td>
                                        <td key={dataItem.name}>{dataItem.name}</td>
                                        <td key={dataItem.email}>{dataItem.email}</td>
                                     

                                    </tr>
                                ))
                                }
                            </tbody>
                        </Table>
                        <Form.Group className="mr-3">
                        <Link  to="/Final/public/Home" className='btn btn-primary btn-lg text-white '>Regresar</Link>
                        </Form.Group>
                    </div>
                </Container>
            </div>
        </div>
    );
}



export default SUsers;