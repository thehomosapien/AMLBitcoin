// Copyright (c) 2015 The Bitcoin Core developers
// Copyright (c) 2017 The AmlBitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

/**
 * Functionality for communicating with Tor.
 */
#ifndef AMLBITCOIN_TORCONTROL_H
#define AMLBITCOIN_TORCONTROL_H

#include "scheduler.h"

extern const std::string DEFAULT_TOR_CONTROL;
static const bool DEFAULT_LISTEN_ONION = true;

void StartTorControl(boost::thread_group& threadGroup, CScheduler& scheduler);
void InterruptTorControl();
void StopTorControl();

#endif /* AMLBITCOIN_TORCONTROL_H */
