/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.net.cts;

import dalvik.annotation.TestLevel;
import dalvik.annotation.TestTargetClass;
import dalvik.annotation.TestTargetNew;

import android.net.NetworkInfo.DetailedState;
import android.test.AndroidTestCase;

@TestTargetClass(DetailedState.class)
public class NetworkInfo_DetailedStateTest extends AndroidTestCase {

    @TestTargetNew(
        level = TestLevel.COMPLETE,
        notes = "Test valueOf(String name).",
        method = "valueOf",
        args = {java.lang.String.class}
    )
    public void testValueOf() {
        assertEquals(DetailedState.AUTHENTICATING, DetailedState.valueOf("AUTHENTICATING"));
        assertEquals(DetailedState.CONNECTED, DetailedState.valueOf("CONNECTED"));
        assertEquals(DetailedState.CONNECTING, DetailedState.valueOf("CONNECTING"));
        assertEquals(DetailedState.DISCONNECTED, DetailedState.valueOf("DISCONNECTED"));
        assertEquals(DetailedState.DISCONNECTING, DetailedState.valueOf("DISCONNECTING"));
        assertEquals(DetailedState.FAILED, DetailedState.valueOf("FAILED"));
        assertEquals(DetailedState.IDLE, DetailedState.valueOf("IDLE"));
        assertEquals(DetailedState.OBTAINING_IPADDR, DetailedState.valueOf("OBTAINING_IPADDR"));
        assertEquals(DetailedState.SCANNING, DetailedState.valueOf("SCANNING"));
        assertEquals(DetailedState.SUSPENDED, DetailedState.valueOf("SUSPENDED"));
    }

    @TestTargetNew(
        level = TestLevel.COMPLETE,
        notes = "Test values().",
        method = "values",
        args = {}
    )
    public void testValues() {
        DetailedState[] expected = DetailedState.values();
        assertEquals(11, expected.length);
        assertEquals(DetailedState.IDLE, expected[0]);
        assertEquals(DetailedState.SCANNING, expected[1]);
        assertEquals(DetailedState.CONNECTING, expected[2]);
        assertEquals(DetailedState.AUTHENTICATING, expected[3]);
        assertEquals(DetailedState.OBTAINING_IPADDR, expected[4]);
        assertEquals(DetailedState.CONNECTED, expected[5]);
        assertEquals(DetailedState.SUSPENDED, expected[6]);
        assertEquals(DetailedState.DISCONNECTING, expected[7]);
        assertEquals(DetailedState.DISCONNECTED, expected[8]);
        assertEquals(DetailedState.FAILED, expected[9]);
        assertEquals(DetailedState.BLOCKED, expected[10]);
    }

}
