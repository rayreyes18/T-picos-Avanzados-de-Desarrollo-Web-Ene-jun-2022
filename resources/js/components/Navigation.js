import React from "react";
import { Link } from "react-router-dom";
import { Navbar, Container, Nav, NavDropdown } from "react-bootstrap";
import { right } from "@popperjs/core";
const Navigation = () => {
    return (
        
        <Navbar collapseOnSelect expand="lg"  bg="primary" variant="dark">
            <Container>
            <img src="favicon.png" alt="" width="30" height="24" class="d-inline-block align-text-top"/>
                <Navbar.Brand as={Link} to="/Final/public/">
                    LA CIUDAD DE LOS LIBROS
                </Navbar.Brand>
                <Navbar.Toggle aria-controls="responsive-navbar-nav" />
                <Navbar.Collapse id="responsive-navbar-nav">
                    <Nav className="me-auto">
                        
                        
                    </Nav>
                    <Nav>
                        <Nav.Link as={Link} to="/Final/public/LoginForm"> Login </Nav.Link>
                        <Nav.Link as={Link} to="/Final/public/Register">Register</Nav.Link>
                        <Nav.Link as={Link} to="/Final/public/">Logout</Nav.Link>
                        
                    </Nav>
                </Navbar.Collapse>
            </Container>
        </Navbar>
       /*  {<nav class="navbar bg-light"> 
            <div class="container-fluid"> 
                <a class="navbar-brand" href="#"> 
                <img src="/docs/5.2/assets/brand/bootstrap-logo.svg" alt="" width="30" height="24" class="d-inline-block align-text-top"/>
                 Bootstrap </a>
                  </div>
                   </nav> */
    );
};
export default Navigation;
