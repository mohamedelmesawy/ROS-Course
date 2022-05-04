// Auto-generated. Do not edit!

// (in-package test_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class Count_wordsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.line = null;
    }
    else {
      if (initObj.hasOwnProperty('line')) {
        this.line = initObj.line
      }
      else {
        this.line = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Count_wordsRequest
    // Serialize message field [line]
    bufferOffset = _serializer.string(obj.line, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Count_wordsRequest
    let len;
    let data = new Count_wordsRequest(null);
    // Deserialize message field [line]
    data.line = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.line);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_pkg/Count_wordsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c74f2920fe696c465ee011cedd4ca6e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string line
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Count_wordsRequest(null);
    if (msg.line !== undefined) {
      resolved.line = msg.line;
    }
    else {
      resolved.line = ''
    }

    return resolved;
    }
};

class Count_wordsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.count = null;
    }
    else {
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Count_wordsResponse
    // Serialize message field [count]
    bufferOffset = _serializer.int64(obj.count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Count_wordsResponse
    let len;
    let data = new Count_wordsResponse(null);
    // Deserialize message field [count]
    data.count = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_pkg/Count_wordsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8dbac33d2eb67bfeeedd516d65fec846';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int64 count
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Count_wordsResponse(null);
    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: Count_wordsRequest,
  Response: Count_wordsResponse,
  md5sum() { return '0631a1573c647362eba416a69e271fd9'; },
  datatype() { return 'test_pkg/Count_words'; }
};
