/*
 * Copyright (C) 2022 The Android Open Source Project
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

package android.hardware.media.bufferpool2;

/**
 * IObserver listens on notifications from the buffer pool. On receiving
 * notifications, FMQ messages from the specific buffer pool which are already
 * in the FMQ are processed.
 */
@VintfStability
interface IObserver {
    /**
     * The specific buffer pool sent a message to the client. Calling this
     * method from the buffer pool enforces a buffer pool client process the
     * message.
     *
     * @param connectionId the connection Id of the specific buffer pool client
     * @param msgId Id of the most recent message
     */
    oneway void onMessage(in long connectionId, in int msgId);
}
