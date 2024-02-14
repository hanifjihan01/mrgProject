import  express  from "express";
import {
    getUsers,
    getUserById,
    createUser,
    updateUser,
    deleteUser
} from "../controllers/Users.js";

import { verifyUser, officerOnly } from "../middleware/AuthUser.js";

const router = express.Router();

router.get('/users', verifyUser,officerOnly,getUsers);
router.get('/users/:id', verifyUser,officerOnly,getUserById);
router.post('/users', verifyUser,officerOnly,createUser);
router.patch('/users/:id', verifyUser,officerOnly,updateUser);
router.delete('/users/:id', verifyUser,officerOnly,deleteUser);

export default router;