import React from 'react';
import { Link } from 'react-router-dom';

const Header = () => (
  <header>
    <h1>
      <Link to="/events">Event Manager - POC (MSys)</Link>
    </h1>
  </header>
);

export default Header;
