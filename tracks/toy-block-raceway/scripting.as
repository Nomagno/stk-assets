bool isTrackForward(Track::TrackObject@ obj)
{
    return !Track::isReverse();
}

bool isTrackReverse(Track::TrackObject@ obj)
{
    return Track::isReverse();
}

bool movableIsTrackForward(Track::TrackObject@ obj)
{
    return !Track::isReverse();
}

bool movableIsTrackReverse(Track::TrackObject@ obj)
{
    return Track::isReverse();
}

bool movableIsNetworkingAndForward(Track::TrackObject@ obj)
{
    return Utils::isNetworking() && !Track::isReverse();
}

bool movableIsNetworkingAndReverse(Track::TrackObject@ obj)
{
    return Utils::isNetworking() && Track::isReverse();
}

bool movableIsNotNetworking(Track::TrackObject@ obj)
{
    return !Utils::isNetworking();
}

bool movableIsNotNetworkingAndForward(Track::TrackObject@ obj)
{
    return !Utils::isNetworking() && !Track::isReverse();
}

bool movableIsNotNetworkingAndReverse(Track::TrackObject@ obj)
{
    return !Utils::isNetworking() && Track::isReverse();
}

bool isNetworking(Track::TrackObject@ obj)
{
    return Utils::isNetworking();
}

bool isNetworkingAndForward(Track::TrackObject@ obj)
{
    return Utils::isNetworking() && !Track::isReverse();
}

bool isEasterEggOrCTF(Track::TrackObject@ obj)
{
    // enum RaceManager::MINOR_MODE_EASTER_EGG is 3000
    return Track::getMinorRaceMode() == 3000 || Track::getMinorRaceMode() == 2002;
}

bool isNetworkingAndForwardAndNotCTF(Track::TrackObject@ obj)
{
    return Utils::isNetworking() && !Track::isReverse() && Track::getMinorRaceMode() != 2002;
}

bool isNetworkingAndReverseAndNotCTF(Track::TrackObject@ obj)
{
    return Utils::isNetworking() &&  Track::isReverse() && Track::getMinorRaceMode() != 2002;
}
