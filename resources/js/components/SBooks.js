import React, { useState, useEffect, useMemo } from 'react';
import { Form, Container, FormControl, Table, Button } from 'react-bootstrap';
import Axios from 'axios'
import { Link } from 'react-router-dom'


function SBooks() {
    const [Books, setBooks] = useState([]);

    const [term, setTerm] = useState("");

    useEffect(() => {
        (async () => {
            const response = await Axios({
                method: 'get',
                url: 'http://localhost:80/Final/public/api/books'
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
            url: 'http://localhost:80/Final/public/api/bookSearch?Author=' + $('#author').val()

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
                            <h3 align= "center">Ingresa el autor del libro a buscar: </h3>
                            &nbsp;
                            <Form.Group>
                                <FormControl type="text" placeholder="Buscar por autor"
                                    onChange={e => setTerm(e.target.value)}
                                    id="author" />
                            </Form.Group>
                            &nbsp;
                            <Link to="/Final/public/CBooks" className='btn btn-success btn-lg mt-2 mb-2 text-white'>Crear</Link>
                        </section>
                        <br />
                       
                        <Table bordered="outline-dark" >
                            <thead class="table-primary">
                                <tr>
                                    <th>  </th>
                                    <th>id</th>
                                    <th>Tittle</th>
                                    <th>Genre</th>
                                    <th>Editorial</th>
                                    <th>Price</th>
                                    <th>Author</th>
                                    <th>Format</th>
                                    <th>Review</th>
                                    <th>Score</th>
                                    <th>Reading_age</th>
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
                                        <td key={dataItem.Tittle}>{dataItem.Tittle}</td>
                                        <td key={dataItem.Genre}>{dataItem.Genre}</td>
                                        <td key={dataItem.Editorial}>{dataItem.Editorial}</td>
                                        <td key={dataItem.Price}>{dataItem.Price}</td>
                                        <td key={dataItem.Author}>{dataItem.Author}</td>
                                        <td key={dataItem.Format}>{dataItem.Format}</td>
                                        <td key={dataItem.Review}>{dataItem.Review}</td>
                                        <td key={dataItem.Score}>{dataItem.Score}</td>
                                        <td key={dataItem.Reading_age}>{dataItem.Reading_age}</td>
                                        <td key={dataItem.user_id} >{dataItem.user_id}</td>
                                        <td key={dataItem.bookstore_id}>{dataItem.bookstore_id}</td>


                                    </tr>
                                ))
                                }
                            </tbody>
                        </Table>
                       
                        <Form.Group className="mr-3">
                        <Link to="/Final/public/UBooks"  className='btn btn-warning btn-lg text-white '>Editar</Link>
                        &nbsp;
                            &nbsp;
                        <Link to="/Final/public/DBooks"  className='btn btn-danger btn-lg text-white'>Eliminar</Link>
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



export default SBooks;