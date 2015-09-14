/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

import React, { Component } from 'react';
import { Container } from 'flux/utils';
import classnames from 'classnames';

import Modal from 'react-modal';

import { KeyCodes } from 'constants/ActorAppConstants';

import ProfilePictureActionCreators from 'actions/ProfilePictureActionCreators';

import ProfilePictureStore from 'stores/ProfilePictureStore'

const ProfilePictureStep = {
  SELECT_SOURCE: 1,
  SELECT_FROM_DISK: 2,
  SELECT_FROM_WEBCAM: 3,
  CROP: 4
};

class ProfilePictureModal extends Component {
  static getStores = () => [ProfilePictureStore];

  static calculateState() {
    return {
      isOpen: ProfilePictureStore.isOpen(),
      currentStep: ProfilePictureStep.SELECT_SOURCE,
      cropPosition: {
        x: 0,
        y: 0
      },
      cropSize: {
        height: 200,
        width: 200
      }
    };
  }

  componentWillUpdate(nextProps, nextState) {
    const { isOpen } = nextState;

    if (isOpen) {
      document.addEventListener('keydown', this.onKeyDown, false);
    } else {
      document.removeEventListener('keydown', this.onKeyDown, false);
    }
  }

  onClose = () => {
    ProfilePictureActionCreators.hide();
    this.setState({
      profilePictureSource: null,
      currentStep: ProfilePictureStep.SELECT_SOURCE
    });
  };

  onKeyDown = (event) => {
    if (event.keyCode === KeyCodes.ESC) {
      event.preventDefault();
      this.onClose();
    }
  };

  onStartMoving = (event) => {
    const { cropPosition } = this.state;

    event.preventDefault();

    const overlay = React.findDOMNode(this.refs.overlay);
    const overlayRect = overlay.getBoundingClientRect();

    const dragOffset = {
      x: (event.pageX - overlayRect.left) - cropPosition.x,
      y: (event.pageY - overlayRect.top) - cropPosition.y
    };
    this.setState({dragOffset});

    overlay.addEventListener('mousemove', this.onMoving);
    overlay.addEventListener('touchmove', this.onMoving);
  };

  onMoving = (event) => {
    const { dragOffset, cropSize } = this.state;
    const overlay = React.findDOMNode(this.refs.overlay);
    const overlayRect = overlay.getBoundingClientRect();

    event.preventDefault();
    event.stopPropagation();

    let cropPosition = {
      x: (event.pageX - overlayRect.left) - dragOffset.x,
      y: (event.pageY - overlayRect.top) - dragOffset.y
    };

    if (cropPosition.x < 0) {
      cropPosition.x = 0;
    } else if (cropPosition.x > overlayRect.width - cropSize.width) {
      cropPosition.x = overlayRect.width - cropSize.width;
    }

    if (cropPosition.y < 0) {
      cropPosition.y = 0;
    } else if (cropPosition.y > overlayRect.height - cropSize.height) {
      cropPosition.y = overlayRect.height - cropSize.height;
    }

    this.setState({cropPosition})
  };

  onEndMoving = (event) => {
    const overlay = React.findDOMNode(this.refs.overlay);

    event.preventDefault();

    overlay.removeEventListener('mousemove', this.onMoving);
    overlay.removeEventListener('touchmove', this.onMoving);
  };

  onProfilePhotoChange = () => {
    const imageInput = React.findDOMNode(this.refs.imageInput);
    const imageForm = React.findDOMNode(this.refs.imageForm);
    const file = imageInput.files[0];

    let reader = new FileReader();
    reader.onload = (event) => {
      this.setState({
        profilePictureSource: event.target.result,
        currentStep: ProfilePictureStep.CROP
      });
      imageForm.reset();
    };
    reader.readAsDataURL(file);
  };

  onSelectFromDisk = () => this.setState({currentStep: ProfilePictureStep.SELECT_FROM_DISK});
  onSelectFromWebcam = () => this.setState({currentStep: ProfilePictureStep.SELECT_FROM_WEBCAM});

  onCrop = () => {
    const { cropPosition, cropSize } = this.state;
    const cropImage = React.findDOMNode(this.refs.cropImage);
    let canvas = document.createElement('canvas');

    canvas.width = cropSize.width;
    canvas.height = cropSize.height;

    let context = canvas.getContext('2d');
    context.drawImage(cropImage, cropPosition.x, cropPosition.y, cropSize.width, cropSize.height, 0, 0, cropSize.width, cropSize.height);

    const croppedImage = canvas.toDataURL();
    this.setState({croppedImage});
    window.open(croppedImage);
  };

  render() {
    const { isOpen, profilePictureSource, currentStep, cropPosition } = this.state;

    let modalBody;
    switch (currentStep) {
      case ProfilePictureStep.SELECT_SOURCE:
        modalBody = (
          <div style={{padding: 20}}>
            <h3>select source</h3>
            <button onClick={this.onSelectFromDisk}>Disk</button> | <button onClick={this.onSelectFromWebcam}>Webcam</button>
          </div>
        );
        break;
      case ProfilePictureStep.SELECT_FROM_DISK:
        modalBody = (
          <form ref="imageForm" style={{padding: 20}}>
            <h3>Chose image to set profile picture</h3>
            <input type="file" ref="imageInput" onChange={this.onProfilePhotoChange}/>
          </form>
        );
        break;
      case ProfilePictureStep.CROP:
        modalBody = (
          <div className="crop-wrapper" ref="overlay">
            <div className="crop-wrapper__overlay"
                 style={{left: cropPosition.x, top: cropPosition.y}}
                 onMouseDown={this.onStartMoving}
                 onTouchStart={this.onStartMoving}
                 onMouseUp={this.onEndMoving}
                 onTouchEnd={this.onEndMoving}
                 onDoubleClick={this.onCrop}>
              <img src={profilePictureSource} ref="cropImage" draggable="false" style={{left: -cropPosition.x, top: -cropPosition.y}}/>
            </div>
            <img ref="originalImage" src={profilePictureSource} className="crop-wrapper__image-original"
                 draggable="false"/>
          </div>
        );
        break;
    }

    if (isOpen) {
      return (
        <Modal className="modal-new modal-new--profile-picture"
               closeTimeoutMS={150}
               isOpen={isOpen}>

          <div className="modal-new__header">
            <i className="modal-new__header__icon material-icons">portrait</i>
            <h3 className="modal-new__header__title">Profile picture</h3>
            <div className="pull-right">
              <button className="button button--lightblue" onClick={this.onClose}>Done</button>
            </div>
          </div>

          <div className="modal-new__body">
            {modalBody}
          </div>
        </Modal>
      );
    } else {
      return null;
    }
  }
}

export default Container.create(ProfilePictureModal, {pure: false});
