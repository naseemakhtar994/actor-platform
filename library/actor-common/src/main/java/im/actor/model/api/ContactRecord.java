package im.actor.model.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import java.io.IOException;

import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.util.SparseArray;

public class ContactRecord extends BserObject {

    private ContactType type;
    private String stringValue;
    private Long longValue;
    private String title;
    private String subtitle;

    public ContactRecord(ContactType type, String stringValue, Long longValue, String title, String subtitle) {
        this.type = type;
        this.stringValue = stringValue;
        this.longValue = longValue;
        this.title = title;
        this.subtitle = subtitle;
    }

    public ContactRecord() {

    }

    public ContactType getType() {
        return this.type;
    }

    public String getStringValue() {
        return this.stringValue;
    }

    public Long getLongValue() {
        return this.longValue;
    }

    public String getTitle() {
        return this.title;
    }

    public String getSubtitle() {
        return this.subtitle;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.type = ContactType.parse(values.getInt(1));
        this.stringValue = values.optString(2);
        this.longValue = values.optLong(3);
        this.title = values.optString(4);
        this.subtitle = values.optString(5);
        if (values.hasRemaining()) {
            setUnmappedObjects(values.buildRemaining());
        }
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.type == null) {
            throw new IOException();
        }
        writer.writeInt(1, this.type.getValue());
        if (this.stringValue != null) {
            writer.writeString(2, this.stringValue);
        }
        if (this.longValue != null) {
            writer.writeLong(3, this.longValue);
        }
        if (this.title != null) {
            writer.writeString(4, this.title);
        }
        if (this.subtitle != null) {
            writer.writeString(5, this.subtitle);
        }
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
        String res = "struct ContactRecord{";
        res += "type=" + this.type;
        res += ", stringValue=" + this.stringValue;
        res += ", longValue=" + this.longValue;
        res += ", title=" + this.title;
        res += "}";
        return res;
    }

}
