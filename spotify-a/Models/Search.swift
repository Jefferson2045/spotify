//
//  Genre.swift
//  spotify-a
//
//  Created by Alumno on 7/07/23.
//

import Foundation

public struct Searches: Codable {
    let albums: Trackss
}

public struct Trackss: Codable {
    let items: [Albumsss]
}

public struct Albumsss: Codable {
    let album_type: String?
    let name: String?
    let artist: String?
    let images: [Imagesss]?
}

public struct Albumm: Codable {
    let albumType: String
    let totalTracks: Int
    let availableMarkets: [String]
    let externalURLs: ExternalURLs
    let href: String
    let id: String
    let images: [Imagesss]
    let name: String
    let releaseDate: String
    let releaseDatePrecision: String
    let restrictions: Restrictions
    let type: String
    let uri: String
    let copyrights: [Copyright]
    let externalIDs: ExternalIDs
    let genres: [String]
    let label: String
    let popularity: Int
    let albumGroup: String
    let artists: [Artistt]

}

public struct Artistt: Codable {
    let externalURLs: ExternalURLs
    let followers: Followers
    let genres: [String]
    let href: String
    let id: String
    let images: [Imagesss]
    let name: String
    let popularity: Int
    let type: String
    let uri: String

}

public struct ExternalURLs: Codable {
    let spotify: String
}

public struct Followers: Codable {
    let href: String?
    let total: Int
}

public struct Imagesss: Codable {
    let url: String?
    let height: String?
    let width: String?
}

public struct Copyrightt: Codable {
    let text: String
    let type: String
}

public struct ExternalIDs: Codable {
    let isrc: String?
    let ean: String?
    let upc: String?
}

public struct LinkedFrom: Codable {
}

public struct Restrictions: Codable {
    let reason: String?
}

public struct Artists: Codable {
    let href: String
    let limit: Int
    let next: String
    let offset: Int
    let previous: String
    let total: Int
    let items: [Artist]
}

public struct Albumss: Codable {
    let href: String
    let limit: Int
    let next: String
    let offset: Int
    let previous: String
    let total: Int
    let items: [Albumm]
}

public struct Playlists: Codable {
    let href: String
    let limit: Int
    let next: String
    let offset: Int
    let previous: String
    let total: Int
    let items: [Playlist]
}

public struct Playlist: Codable {
    let collaborative: Bool
    let description: String
    let externalURLs: ExternalURLs
    let href: String
    let id: String
    let images: [Imagesss]
    let name: String
    let owner: Owner
    let isPublic: Bool
    let snapshotID: String
    let tracks: TracksInfo
    let type: String
    let uri: String
}

public struct Owner: Codable {
    let externalURLs: ExternalURLs
    let followers: Followers
    let href: String
    let id: String
    let type: String
    let uri: String
}

public struct TracksInfo: Codable {
    let href: String
    let total: Int
}

public struct Shows: Codable {
    let href: String
    let limit: Int
    let next: String
    let offset: Int
    let previous: String
    let total: Int
    let items: [Show]
}

public struct Show: Codable {
    let availableMarkets: [String]
    let copyrights: [Copyrightt]
    let description: String
    let htmlDescription: String
    let explicit: Bool
    let externalURLs: ExternalURLs
    let href: String
    let id: String
    let images: [Imagesss]
    let isExternallyHosted: Bool
    let languages: [String]
    let mediaType: String
    let name: String
    let publisher: String
    let type: String
    let uri: String
    let totalEpisodes: Int

}

public struct Episodess: Codable {
    let href: String
    let limit: Int
    let next: String
    let offset: Int
    let previous: String
    let total: Int
    let items: [Episode]
}

public struct Episode: Codable {
    let audioPreviewURL: String
    let description: String
    let htmlDescription: String
    let durationMS: Int
    let explicit: Bool
    let externalURLs: ExternalURLs
    let href: String
    let id: String
    let images: [Imagesss]
    let isExternallyHosted: Bool
    let isPlayable: Bool
    let language: String
    let languages: [String]
    let name: String
    let releaseDate: String
    let releaseDatePrecision: String
    let resumePoint: ResumePoint
    let type: String
    let uri: String
    let restrictions: Restrictions

}

public struct ResumePoint: Codable {
    let fullyPlayed: Bool
    let resumePositionMS: Int
}

public struct Audiobooks: Codable {
    let href: String
    let limit: Int
    let next: String
    let offset: Int
    let previous: String
    let total: Int
    let items: [Audiobook]
}

public struct Audiobook: Codable {
    let authors: [Author]
    let availableMarkets: [String]
    let copyrights: [Copyrightt]
    let description: String
    let htmlDescription: String
    let edition: String
    let explicit: Bool
    let externalURLs: ExternalURLs
    let href: String
    let id: String
    let images: [Imagesss]
    let languages: [String]
    let mediaType: String
    let name: String
    let narrators: [Author]
    let publisher: String
    let type: String
    let uri: String
    let totalChapters: Int
}

public struct Author: Codable {
    let name: String
}

