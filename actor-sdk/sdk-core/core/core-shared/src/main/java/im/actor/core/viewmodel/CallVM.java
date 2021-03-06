package im.actor.core.viewmodel;

import com.google.j2objc.annotations.Property;

import java.util.ArrayList;

import im.actor.core.entity.Peer;
import im.actor.core.viewmodel.generics.BooleanValueModel;
import im.actor.runtime.mvvm.ValueModel;
import im.actor.runtime.webrtc.WebRTCMediaStream;
import im.actor.runtime.webrtc.WebRTCPeerConnection;

public class CallVM {

    @Property("nonatomic, readonly")
    private final long callId;
    @Property("nonatomic, readonly")
    private final Peer peer;
    @Property("nonatomic, readonly")
    private final ValueModel<CallState> state;

    // Incoming Streams

    @Property("nonatomic, readonly")
    private final ValueModel<ArrayList<CallMediaSource>> mediaStreams;

    // Own Stream

    @Property("nonatomic, readonly")
    private final ValueModel<WebRTCMediaStream> ownMediaStream;
    @Property("nonatomic, readonly")
    private final BooleanValueModel isMuted;
    @Property("nonatomic, readonly")
    private final BooleanValueModel isVideoEnabled;

    @Property("nonatomic, readonly")
    private final ValueModel<ArrayList<CallMember>> members;
    @Property("nonatomic, readonly")
    private long callStart;
    @Property("nonatomic, readonly")
    private long callEnd;
    @Property("nonatomic, readonly")
    private final boolean isOutgoing;

    public CallVM(long callId, Peer peer, boolean isOutgoing, ArrayList<CallMember> initialMembers, CallState state) {
        this.callId = callId;
        this.peer = peer;
        this.isOutgoing = isOutgoing;
        this.state = new ValueModel<>("calls." + callId + ".state", state);
        this.mediaStreams = new ValueModel<>("calls." + callId + ".media_stream", new ArrayList<>());
        this.ownMediaStream = new ValueModel<>("calls." + callId + ".own_media_stream", null);
        this.members = new ValueModel<>("calls." + callId + ".members", new ArrayList<>(initialMembers));
        this.isMuted = new BooleanValueModel("calls." + callId + ".muted", false);
        this.isVideoEnabled = new BooleanValueModel("calls." + callId + ".video_enabled", true);
        this.callStart = 0;
    }

    public boolean isOutgoing() {
        return isOutgoing;
    }

    public Peer getPeer() {
        return peer;
    }

    public long getCallId() {
        return callId;
    }

    public BooleanValueModel getIsMuted() {
        return isMuted;
    }

    public BooleanValueModel getIsVideoEnabled() {
        return isVideoEnabled;
    }

    public ValueModel<CallState> getState() {
        return state;
    }

    public ValueModel<ArrayList<CallMember>> getMembers() {
        return members;
    }

    public void setCallStart(long callStart) {
        this.callStart = callStart;
    }

    public long getCallStart() {
        return callStart;
    }

    public long getCallEnd() {
        return callEnd;
    }

    public void setCallEnd(long callEnd) {
        this.callEnd = callEnd;
    }

    public ValueModel<ArrayList<CallMediaSource>> getMediaStreams() {
        return mediaStreams;
    }

    public ValueModel<WebRTCMediaStream> getOwnMediaStream() {
        return ownMediaStream;
    }
}