import React from 'react';
import ReactDOM from 'react-dom';
import { Form, Button } from 'react-bootstrap';
import { Link } from 'react-router-dom';



function Home() {
    return (
        <div className="container">
            <div className="row justify-content-center">
                <div className="col-md-8">
                    <div className="card">
                    <Form>
                            <br></br>
                            <div Name = "link1">
<img src="https://scontent.fgdl3-1.fna.fbcdn.net/v/t39.30808-6/284535263_5089663164403909_5898132607945639437_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeEpnTnngk18IaClU0oQ92FWz-Pa28pcwLrP49rbylzAulg_bftBInZ0w7VF7MjRqKYtManMj4UX1QMUEFbK0Qcg&_nc_ohc=ZSWsSV0HXjwAX89AXO2&_nc_ht=scontent.fgdl3-1.fna&oh=00_AT9PIDq1DdOIBInDf4SlhzGoghpAeKhKBGrFAKZjkD1k7A&oe=629D10B7"
 width="500" height="auto"
                    class="img-fluid d-block mx-auto"></img>
            </div>
                            <br></br>
                            <h3 align="center">Elige una de las opciones mostradas a continuación:</h3>
                            <br></br>
                            <br></br>
                       <center>
                            <Button  align="center" className='btn btn-primary btn-lg text-white' as = {Link} to="/Final/public/SBooks">Opción "Libros"</Button>
                            &nbsp;
                            &nbsp;
                            &nbsp;
                            <Button   align="center" className='btn btn-info btn-lg align-center text-white'  as = {Link} to="/Final/public/SBookstore">Opción "Librerías"</Button>
                            &nbsp;
                            &nbsp;
                            &nbsp;
                             <Button  align="center" className='btn btn-primary btn-lg text-white' as = {Link} to="/Final/public/SUsers">Opción "Usuarios"</Button>
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

export default Home;

