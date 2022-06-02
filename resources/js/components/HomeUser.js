import React from 'react';
import ReactDOM from 'react-dom';
import { Form, Button, Card, Container } from 'react-bootstrap';
import { Link } from 'react-router-dom';

function HomeUser() {
    return (
        <div className="container">
            <div className="row justify-content-center">
                <div className="col-md-8">
                    <div className="card">
                    <Form>
                            <br></br>
                              
<div Name = "link1">
<img src="https://scontent.fgdl3-1.fna.fbcdn.net/v/t39.30808-6/284081257_5089663054403920_1666642073799503034_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHWdoLWqNhB6Tl7eWRPcs353J4nRODpziHcnidE4OnOIZYoRYkRLHcqNERncv-3-cPbStJy6H-qTRmkAKMi9th8&_nc_ohc=hFJKigHtdEwAX9CTpea&_nc_ht=scontent.fgdl3-1.fna&oh=00_AT-F6rqkDVpI_E7kOJRBaIfHIzcdgwkVhmJ9qPNGZ50xdw&oe=629E1328"
 width="500" height="auto"
                    class="img-fluid d-block mx-auto"></img>
            </div>
                            <br></br>
                            <h3  align="center" > Elige una de las opciones mostradas a continuación:</h3>
                            <br></br>
                            <br></br>
                            <center>
                            <Button   align="center" className='btn btn-primary btn-lg text-white' as = {Link} to="/Final/public/VBooks">Opción "Libros"</Button>
                            &nbsp;
                            &nbsp;
                            &nbsp;
                            <Button   align="center" className='btn btn-info btn-lg text-white'  as = {Link} to="/Final/public/VBookstores">Opción "Librerías"</Button>
                            <br />
                            <br />
                            </center>
                        </Form>


                    </div>
                </div>
            </div>
        </div>
       

    );
    
}

export default HomeUser;