// Auto-generated. Do not edit!

// (in-package turtlesim.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Circle = require('../msg/Circle.js');

//-----------------------------------------------------------

class RemoveCircleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoveCircleRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveCircleRequest
    let len;
    let data = new RemoveCircleRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlesim/RemoveCircleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '541b98e964705918fa8eb206b65347b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoveCircleRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class RemoveCircleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.circles = null;
    }
    else {
      if (initObj.hasOwnProperty('circles')) {
        this.circles = initObj.circles
      }
      else {
        this.circles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoveCircleResponse
    // Serialize message field [circles]
    // Serialize the length for message field [circles]
    bufferOffset = _serializer.uint32(obj.circles.length, buffer, bufferOffset);
    obj.circles.forEach((val) => {
      bufferOffset = Circle.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveCircleResponse
    let len;
    let data = new RemoveCircleResponse(null);
    // Deserialize message field [circles]
    // Deserialize array length for message field [circles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.circles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.circles[i] = Circle.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 9 * object.circles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlesim/RemoveCircleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b1b1441bc75b4f59372da8dedbed3bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Circle[] circles
    
    
    ================================================================================
    MSG: turtlesim/Circle
    uint8 id
    float32 x
    float32 y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoveCircleResponse(null);
    if (msg.circles !== undefined) {
      resolved.circles = new Array(msg.circles.length);
      for (let i = 0; i < resolved.circles.length; ++i) {
        resolved.circles[i] = Circle.Resolve(msg.circles[i]);
      }
    }
    else {
      resolved.circles = []
    }

    return resolved;
    }
};

module.exports = {
  Request: RemoveCircleRequest,
  Response: RemoveCircleResponse,
  md5sum() { return '33e097ebc19ab7d381da8cb765933cf3'; },
  datatype() { return 'turtlesim/RemoveCircle'; }
};
