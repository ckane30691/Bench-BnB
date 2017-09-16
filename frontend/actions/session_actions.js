import * as APIUtil from '../util/session_api_util';

const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

const receiveCurrentUser = (currentUser) => {
  return {
    type: RECEIVE_CURRENT_USER,
    currentUser
  };
};

const receiveErrors = (errors) => {
  return {
    type: RECEIVE_ERRORS,
    errors
  };
};
