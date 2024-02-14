import React from "react";
import { NavLink, useNavigate } from "react-router-dom";
import { IoPerson, IoBagCheck, IoHome, IoLogOut } from "react-icons/io5";
import { useDispatch, useSelector } from "react-redux";
import { LogOut, reset } from "../features/authSlice";


const Sidebar = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { user } = useSelector((state) => state.auth);

  const logout = () => {
    dispatch(LogOut());
    dispatch(reset());
    navigate("/");
  };

  return (
    <div className="sidebar" style={{ backgroundColor: "#FAFAD2", height: "100vh", width: "2000px", left: 0, top: 0 }}> 
      <aside className="menu p-2 has-shadow">
        <p className="menu-label">General</p>
        <ul className="menu-list">
          <li>
            <NavLink to={"/dashboard"} className="sidebar-link">
              <IoHome className="sidebar-icon" />
              Dashboard
            </NavLink>
          </li>
         

         
          
     
        </ul>

    

        
        {user && user.role === "finance" &&  (
          <div>
            <p className="menu-label">Officer</p>
            <ul className="menu-list">
              <li>
            <NavLink to={"/finance"} className="sidebar-link">
              <IoBagCheck className="sidebar-icon" />
              Finance
            </NavLink>
          </li>
           
            </ul>
          </div>
        )},
          {user && user.role === "Officer" &&  (
          <div>
            <p className="menu-label">Officer</p>
            <ul className="menu-list">
            <li>
            <NavLink to={"/products"} className="sidebar-link">
              <IoBagCheck className="sidebar-icon" />
              Products
            </NavLink>
          </li>
           
            </ul>
          </div>
        )}
         {user && user.role === "manager" &&  (
          <div>
            <p className="menu-label">Officer</p>
            <ul className="menu-list">
            <li>
            <NavLink to={"/manager"} className="sidebar-link">
              <IoBagCheck className="sidebar-icon" />
              Products
            </NavLink>
          </li>
           
            </ul>
          </div>
        )}

        <p className="menu-label">Settings</p>
        <ul className="menu-list">
          <li>
            <button onClick={logout} className="button is-white">
              <IoLogOut className="sidebar-icon" />
              Logout
            </button>
          </li>
        </ul>
      </aside>
    </div>
  );
};

export default Sidebar;
