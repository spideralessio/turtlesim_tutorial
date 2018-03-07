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

class GetCirclesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCirclesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCirclesRequest
    let len;
    let data = new GetCirclesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlesim/GetCirclesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCirclesRequest(null);
    return resolved;
    }
};

class GetCirclesResponse {
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
    // Serializes a message object of type GetCirclesResponse
    // Serialize message field [circles]
    // Serialize the length for message field [circles]
    bufferOffset = _serializer.uint32(obj.circles.length, buffer, bufferOffset);
    obj.circles.forEach((val) => {
      bufferOffset = Circle.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCirclesResponse
    let len;
    let data = new GetCirclesResponse(null);
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
    return 'turtlesim/GetCirclesResponse';
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
    const resolved = new GetCirclesResponse(null);
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
  Request: GetCirclesRequest,
  Response: GetCirclesResponse,
  md5sum() { return '2b1b1441bc75b4f59372da8dedbed3bb'; },
  datatype() { return 'turtlesim/GetCircles'; }
};
