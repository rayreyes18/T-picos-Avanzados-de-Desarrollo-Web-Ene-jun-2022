import React, { useState, useEffect, useMemo } from 'react';
import { Form, Container, FormControl, Table, Button } from 'react-bootstrap';
import Axios from 'axios'
import { Link } from 'react-router-dom'


function SBookstore() {
    const [Bookstores, setBookstores] = useState([]);

    const [term, setTerm] = useState("");

    useEffect(() => {
        (async () => {
            const response = await Axios({
                method: 'get',
                url: 'http://localhost:80/Final/public/api/bookstores'
            })
                .then(response => {
                    setBookstores(response.data);

                })

        })();
    }, []);

    const searchB = useMemo(() =>
    (async () => {
        const response = await Axios({
            method: 'get',
            url: 'http://localhost:80/Final/public/api/bookstoreSearch?City=' + $('#city').val()

        })
            .then(response => {
                console.log("Envio", response.data);
                setBookstores(response.data);
            })
        console.log("Valores",Bookstores)
    })
        , [Bookstores])



    return (
        <div id="formContent">
            <div className="fadeIn first">
                <Container>
                    <div className="Con">
                        <section className="Mai">
                            <br></br>
                            <h3 align= "center">Ingresa la ciudad de la librería a buscar: </h3>
                            &nbsp;
                            &nbsp;
                            <Form.Group>
                                <FormControl type="text" placeholder="Buscar por cuidad"
                                    onChange={e => setTerm(e.target.value)}
                                    id="city" />
                            </Form.Group>
                            &nbsp;
                            &nbsp;
                            <Button className="btn btn-success btn-lg mt-2 mb-2 text-white" size="m"  as = {Link} to="/Final/public/CBookstores">Crear</Button>

                        </section>
                        <br />

                        <Table bordered="outline-dark" className="ContenidoTAbla">
                            <thead class="table-primary" >
                                <tr>
                                    <th>  </th>
                                    <th>id</th>
                                    <th>Name</th>
                                    <th>Mandated</th>
                                    <th>Address</th>
                                    <th>City</th>
                                    <th>Phone</th>
                                    <th>Mail</th>
                                    <th>Web</th>
                                    <th>Review</th>
                                    <th>Image</th>
                                    <th>user_id</th>
                                  
                                </tr>
                            </thead>
                            <tbody className="datos">
                                {Bookstores.filter((dataItem) => {
                                    if (term == "") {
                                        return dataItem
                                    } else if (dataItem.City.toLowerCase().includes(term.toLowerCase())) {
                                        return dataItem
                                    }

                                }).map(dataItem => (
                                    <tr>
                                        <th>Bookstore:</th>
                                        <td key={dataItem.id}>{dataItem.id}</td>
                                        <td key={dataItem.Name}>{dataItem.Name}</td>
                                        <td key={dataItem.Mandated}>{dataItem.Mandated}</td>
                                        <td key={dataItem.Address}>{dataItem.Address}</td>
                                        <td key={dataItem.City}>{dataItem.City}</td>
                                        <td key={dataItem.Phone}>{dataItem.Phone}</td>
                                        <td key={dataItem.Mail}>{dataItem.Mail}</td>
                                        <td key={dataItem.Web}>{dataItem.Web}</td>
                                        <td key={dataItem.Review}>{dataItem.Review}</td>
                                        <td key={dataItem.Score}>{dataItem.Score}</td>
                                        <td key={dataItem.Image}>{dataItem.Image}</td>
                                        <td key={dataItem.user_id} >{dataItem.user_id}</td>
                                       


                                    </tr>
                                ))
                                }
                            </tbody>
                        </Table>
                        <Form.Group className="mr-3">
                        <Button className="btn btn-warning btn-lg text-white" size="m"  as = {Link} to="/Final/public/UBookstores">Editar</Button>
                        &nbsp;
                            &nbsp;
                        <Button className="btn btn-danger btn-lg text-white" size="m"  as = {Link} to="/Final/public/DBookstore">Eliminar</Button>
                        &nbsp;
                            &nbsp;
                        <Link to="/Final/public/Home"  className='btn btn-primary btn-lg text-white'>Regresar</Link>
                         </Form.Group>
                    </div>
                </Container>
            </div>
        </div>
    );
}



export default SBookstore;