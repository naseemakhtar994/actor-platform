package im.actor.core.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.runtime.collections.*;
import static im.actor.runtime.bser.Utils.*;
import im.actor.core.network.parser.*;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

public class ApiTextCommand extends ApiTextMessageEx {

    private String command;
    private String args;

    public ApiTextCommand(@NotNull String command, @NotNull String args) {
        this.command = command;
        this.args = args;
    }

    public ApiTextCommand() {

    }

    public int getHeader() {
        return 3;
    }

    @NotNull
    public String getCommand() {
        return this.command;
    }

    @NotNull
    public String getArgs() {
        return this.args;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.command = values.getString(1);
        this.args = values.getString(2);
        if (values.hasRemaining()) {
            setUnmappedObjects(values.buildRemaining());
        }
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.command == null) {
            throw new IOException();
        }
        writer.writeString(1, this.command);
        if (this.args == null) {
            throw new IOException();
        }
        writer.writeString(2, this.args);
        if (this.getUnmappedObjects() != null) {
            SparseArray<Object> unmapped = this.getUnmappedObjects();
            for (int i = 0; i < unmapped.size(); i++) {
                int key = unmapped.keyAt(i);
                writer.writeUnmapped(key, unmapped.get(key));
            }
        }
    }

    @Override
    public String toString() {
        String res = "struct TextCommand{";
        res += "command=" + this.command;
        res += ", args=" + this.args;
        res += "}";
        return res;
    }

}
