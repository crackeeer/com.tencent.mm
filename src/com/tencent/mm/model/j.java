package com.tencent.mm.model;

import android.database.Cursor;
import com.tencent.mm.e.b.p;
import com.tencent.mm.j.a;
import com.tencent.mm.sdk.h.d;
import com.tencent.mm.sdk.platformtools.be;
import com.tencent.mm.sdk.platformtools.v;
import com.tencent.mm.storage.q;
import com.tencent.mm.storage.s;
import java.util.Iterator;
import java.util.List;

public final class j
{
  public static int B(String paramString1, String paramString2)
  {
    int j = 0;
    int i = 0;
    if (!ah.rg())
    {
      v.w("MicroMsg.ConversationLogic", "get total unread, but has not set uin");
      j = i;
    }
    do
    {
      return j;
      s locals = ah.tE().ru();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("select unReadCount");
      localStringBuilder.append(" from rconversation where username").append(" = '").append(paramString1).append("' AND ( parentRef is ").append(a.bjU).append(" or parentRef = '' ) ").append(be.li(paramString2));
      paramString1 = localStringBuilder.toString();
      paramString1 = bkP.rawQuery(paramString1, null);
      i = j;
      if (paramString1 != null)
      {
        i = j;
        if (paramString1.getCount() > 0)
        {
          paramString1.moveToFirst();
          i = paramString1.getInt(0);
        }
      }
      j = i;
    } while (paramString1 == null);
    paramString1.close();
    return i;
  }
  
  private static int a(String paramString, Cursor paramCursor)
  {
    long l = be.Gq();
    if ((paramCursor != null) && (paramCursor.getCount() > 0)) {
      paramCursor.moveToFirst();
    }
    for (int i = paramCursor.getInt(0);; i = 0)
    {
      if (paramCursor != null) {
        paramCursor.close();
      }
      v.d("MicroMsg.ConversationLogic", "unreadcheck unRead getTotalUnread %d", new Object[] { Integer.valueOf(i) });
      if (i <= 0) {
        return 0;
      }
      paramString = ah.tE().ru().GX(paramString);
      if (paramString == null)
      {
        v.w("MicroMsg.ConversationLogic", "cursor is null, return");
        v.i("MicroMsg.ConversationLogic", "get count use %d ms", new Object[] { Long.valueOf(be.av(l)) });
        return i;
      }
      paramString.moveToFirst();
      while (!paramString.isAfterLast())
      {
        paramCursor = ah.tE().rr().GD(paramString.getString(0));
        int j = i;
        if (paramCursor != null)
        {
          j = i;
          if (aFl == 0)
          {
            j = i - paramString.getInt(1);
            v.d("MicroMsg.ConversationLogic", "unreadcheck chatroom mute %s, unRead %d,", new Object[] { field_username, Integer.valueOf(j) });
          }
        }
        paramString.moveToNext();
        i = j;
      }
      v.i("MicroMsg.ConversationLogic", "unreadcheck  result talker count is %d", new Object[] { Integer.valueOf(i) });
      paramString.close();
      v.i("MicroMsg.ConversationLogic", "unreadcheck get count use %d ms", new Object[] { Long.valueOf(be.av(l)) });
      return Math.max(0, i);
    }
  }
  
  public static int b(String paramString, List<String> paramList)
  {
    if (!ah.rg())
    {
      v.w("MicroMsg.ConversationLogic", "get total unread with black list, but has not set uin");
      return 0;
    }
    long l = be.Gq();
    s locals = ah.tE().ru();
    v.i("MicroMsg.ConversationStorage", "getTotalUnreadCursor filter[%s] [%s]", new Object[] { paramString, be.baX() });
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("select sum(unReadCount) from rconversation").append(", rcontact");
    localStringBuilder.append(" where rconversation.unReadCount").append(" > 0 AND (rconversation.parentRef").append(" is ").append(a.bjU).append(" or parentRef = '' ) AND ").append("rconversation.username = ").append("rcontact.username").append(be.li(paramString)).append(" AND ( type & 512").append(" ) == 0 AND rcontact.").append("username != 'officialaccounts'");
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        String str = (String)paramList.next();
        localStringBuilder.append(" AND rconversation.username").append(" != '").append(str).append("'");
      }
    }
    paramList = localStringBuilder.toString();
    v.v("MicroMsg.ConversationStorage", "get total unread with black list, sql is %s", new Object[] { paramList });
    int i = a(paramString, bkP.rawQuery(paramList, null));
    v.i("MicroMsg.ConversationLogic", "get count with black list use %d ms", new Object[] { Long.valueOf(be.av(l)) });
    return i;
  }
  
  public static int fd(String paramString)
  {
    return b(paramString, null);
  }
  
  public static int fe(String paramString)
  {
    if (!ah.rg())
    {
      v.w("MicroMsg.ConversationLogic", "get Total Unread Talker, but has not set uin");
      return 0;
    }
    long l = be.Gq();
    Object localObject1 = ah.tE().ru();
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("SELECT COUNT(rconversation.username)");
    ((StringBuilder)localObject2).append(" FROM rconversation, rcontact");
    ((StringBuilder)localObject2).append(" WHERE unReadCount > 0");
    ((StringBuilder)localObject2).append(" AND rconversation.username = rcontact.username");
    ((StringBuilder)localObject2).append(be.li(paramString));
    ((StringBuilder)localObject2).append(" AND ( type & 512").append(" ) == 0");
    ((StringBuilder)localObject2).append(" AND ( attrflag & 2097152 ) == 0");
    ((StringBuilder)localObject2).append(" AND ( ( parentRef is ").append(a.bjU).append(" or parentRef = '' ) ");
    ((StringBuilder)localObject2).append(" AND rcontact.username").append(" != 'officialaccounts')");
    localObject2 = ((StringBuilder)localObject2).toString();
    v.i("MicroMsg.ConversationStorage", "get total unread talker, sql is %s", new Object[] { localObject2 });
    localObject1 = bkP.rawQuery((String)localObject2, null);
    if (((Cursor)localObject1).getCount() > 0) {
      ((Cursor)localObject1).moveToFirst();
    }
    for (int i = ((Cursor)localObject1).getInt(0);; i = 0)
    {
      ((Cursor)localObject1).close();
      if (i <= 0) {
        break;
      }
      paramString = ah.tE().ru().GX(paramString);
      if (paramString == null)
      {
        v.w("MicroMsg.ConversationLogic", "cursor is null, return");
        v.i("MicroMsg.ConversationLogic", "get count use %d ms", new Object[] { Long.valueOf(be.av(l)) });
        return i;
      }
      paramString.moveToFirst();
      while (!paramString.isAfterLast())
      {
        localObject1 = ah.tE().rr().GD(paramString.getString(0));
        int j = i;
        if (localObject1 != null)
        {
          j = i;
          if (aFl == 0) {
            j = i - 1;
          }
        }
        paramString.moveToNext();
        i = j;
      }
      v.i("MicroMsg.ConversationLogic", "result talker count is %d", new Object[] { Integer.valueOf(i) });
      paramString.close();
      v.i("MicroMsg.ConversationLogic", "get count use %d ms", new Object[] { Long.valueOf(be.av(l)) });
      return Math.max(0, i);
    }
  }
  
  public static int sU()
  {
    int j = 0;
    int i = 0;
    if (!ah.rg())
    {
      v.w("MicroMsg.ConversationLogic", "get Bottle Total Conversation Unread, but has not set uin");
      j = i;
    }
    Object localObject;
    do
    {
      return j;
      localObject = ah.tE().ru();
      v.i("MicroMsg.ConversationStorage", "get bottle total conversation unread sql is %s", new Object[] { "select count(*) from rbottleconversation where unReadCount > 0" });
      localObject = bkP.rawQuery("select count(*) from rbottleconversation where unReadCount > 0", null);
      i = j;
      if (localObject != null)
      {
        i = j;
        if (((Cursor)localObject).getCount() > 0)
        {
          ((Cursor)localObject).moveToFirst();
          i = ((Cursor)localObject).getInt(0);
        }
      }
      j = i;
    } while (localObject == null);
    ((Cursor)localObject).close();
    return i;
  }
}

/* Location:
 * Qualified Name:     com.tencent.mm.model.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */