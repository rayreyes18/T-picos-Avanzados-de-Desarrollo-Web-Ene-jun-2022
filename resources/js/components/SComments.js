import React, { useState, useEffect, useMemo } from 'react';
import { Form, Container, FormControl, Table, Button } from 'react-bootstrap';
import Axios from 'axios'
import { Link } from 'react-router-dom'


function SReviews() {
    const [Books, setBooks] = useState([]);

    const [term, setTerm] = useState("");

    useEffect(() => {
        (async () => {
            const response = await Axios({
                method: 'get',
                url: 'http://localhost:80/Final/public/api/bookstorecomments'
            })
                .then(response => {
                    setBooks(response.data);

                })

        })();
    }, []);
    
    const searchB = useMemo(() =>
    (async () => {
        const response = await Axios({
            method: 'get',
            url: 'http://localhost:80/Final/public/api/bookstoreSearch?bookstore_id=' + $('#bookstore_id').val()

        })
            .then(response => {
                console.log("Envio", response.data);
                setBooks(response.data);
            })
        console.log("Valores",Books)
    })
        , [Books])



    return (
        <div id="formContent">
            <div className="fadeIn first">
                <Container>
                
                    <div className="Con">
                        <section className="Mai">
                        <br></br>
                            <h3 align= "center">Comentarios de librerías: </h3>
                            &nbsp;
                            &nbsp;
                            <Form.Group>
                                <FormControl type="text" placeholder="Buscar por número Libreria"
                                    onChange={e => setTerm(e.target.value)}
                                    id="bookstore_id" />
                            </Form.Group>
                        </section>
                        <br />
                       
                        <Table bordered="outline-dark" className="table-dark">
                            <thead class="table-primary">
                                <tr>
                                    <th>  </th>
                                    <th>id</th>
                                    <th>Review</th>
                                    <th>user_id</th>
                                    <th>bookstore_id</th>
                                </tr>
                            </thead>
                            <tbody className="datos">
                                {Books.filter((dataItem) => {
                                    if (term == "") {
                                        return dataItem
                                    } else if (dataItem.Author.toLowerCase().includes(term.toLowerCase())) {
                                        return dataItem
                                    }

                                }).map(dataItem => (
                                    <tr>
                                        <th>Books:</th>
                                        <td key={dataItem.id}>{dataItem.id}</td>
                                        <td key={dataItem.Review}>{dataItem.Review}</td>
                                        <td key={dataItem.user_id} >{dataItem.user_id}</td>
                                        <td key={dataItem.bookstore_id}>{dataItem.bookstore_id}</td>

                                    </tr>
                                ))
                                }
                            </tbody>
                        </Table>
                        <Form.Group className="mr-3">
                        <Link to="/Final/public/CComments"  className='btn btn-warning btn-lg text-white '>Insertar comentario</Link>
                        </Form.Group>
                        &nbsp;
                            &nbsp;
                        <Form.Group className="mr-3">
                        <Link to="/Final/public/VBookstores"  className='btn btn-danger btn-lg text-white '>Regresar</Link>
                        </Form.Group>
                    </div>
                </Container>
            </div>
        </div>
    );
}



export default SReviews;