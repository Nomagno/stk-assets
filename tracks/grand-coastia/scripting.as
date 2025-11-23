bool isTimeTrial(Track::TrackObject@ obj) {
    return (Track::getMinorRaceMode() == 1101);
}

void onStart() {
    Track::getTrackObject("", "BallSound").getSoundEmitter().stop();
}

void hitBall(int idKart, const string libraryInstance, const string obj_id) {
    //play ball SFX
    // I would just do PlaySound() but that doesn't seem to work with custom sounds as of v1.4
    Track::getTrackObject("", "BallSound").moveTo(Track::getTrackObject("", obj_id).getCenterPosition(), true);
    Track::getTrackObject("", "BallSound").getSoundEmitter().playOnce();
}
