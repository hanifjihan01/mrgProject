import React, {useEffect} from 'react';
import Layout from './Layout';
import DashboardFinance from '../components/FormAddUser';
import {useDispatch, useSelector} from "react-redux";
import{useNavigate} from "react-router-dom";
import { getMe } from '../features/authSlice';


const AddUser = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const {isError, user} = useSelector((state => state.auth));

  useEffect(()=>{
    dispatch(getMe());
  },[dispatch]);

  useEffect(()=>{
    if(isError){
        navigate("/");
    }
    if(user && user.role !== "manager"){
      navigate("/dashboard");
    }
  },[isError, user,navigate]);


  return (
    <Layout>
        <DashboardFinance/>
    </Layout>
  )
}

export default AddUser