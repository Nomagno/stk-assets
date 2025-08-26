bool isReverse(Track::TrackObject@ obj)
{
    return Track::isReverse();
}

bool isForward(Track::TrackObject@ obj)
{
    return !Track::isReverse();
}
