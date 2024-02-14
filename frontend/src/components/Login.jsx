import React, { useState, useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import { LoginUser, reset } from "../features/authSlice";
import FormAddUser from "./FormAddUser";
import AddUser from "../pages/AddUser";


const Login = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [showPassword, setShowPassword] = useState(false); // State to toggle password visibility
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { user, isError, isSuccess, isLoading, message } = useSelector(
    (state) => state.auth
  );

  useEffect(() => {
    if (user || isSuccess) {
      navigate("/dashboard");
    }
    dispatch(reset());
  }, [user, isSuccess, dispatch, navigate]);

  const togglePasswordVisibility = () => {
    setShowPassword(!showPassword);
  };

  const Auth = (e) => {
    e.preventDefault();
    dispatch(LoginUser({ email, password }));
  };

  return (
    <section className="hero has-background-grey-light is-fullheight is-fullwidth">
      <div className="hero-body">
        <div className="container">
          <div className="columns is-centered">
            <div className="column is-4">
              <form onSubmit={Auth} className="box">
                {isError && (
                  <p className="has-text-centered has-text-danger">
                    {message}
                  </p>
                )}
                <h1 className="title is-2 has-text-centered has-text-primary">Masuk</h1>
                <div className="field">
                  <label className="label" htmlFor="email">
                    Email
                  </label>
                  <div className="control">
                    <input
                      id="email"
                      type="text"
                      className="input"
                      value={email}
                      onChange={(e) => setEmail(e.target.value)}
                      placeholder="email"
                      required
                    />
                  </div>
                </div>
                <div className="field">
                  <label className="label" htmlFor="password">
                    Password
                  </label>
                  <div className="control">
                    <input
                      id="password"
                      type={showPassword ? "text" : "password"} // Toggle password visibility based on showPassword state
                      className="input"
                      value={password}
                      onChange={(e) => setPassword(e.target.value)}
                      placeholder="******"
                      required
                    />
                  </div>
                </div>
                <div className="field">
                  <label className="checkbox">
                    <input
                      type="checkbox"
                      onChange={togglePasswordVisibility} // Toggle the showPassword state
                    />
                    Show Password
                  </label>
                </div>
                <div className="field mt-5">
                  <button
                    type="submit"
                    className={`button is-info ${
                      isLoading ? "is-loading" : ""
                    }`}
                    disabled={isLoading}
                  >
                    Login
                  </button>
                </div>
                
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Login;
