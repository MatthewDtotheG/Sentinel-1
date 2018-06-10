import { FETCH_GRAPHS } from '../actions/types';

const intialState = {
  target_data: []
}

export default function(state = intialState, action) {
  switch (action.type) {
    case FETCH_GRAPHS:
      return {
        ...state,
        target_data: action.payload
      }
    default:
      return state;
  }
}
